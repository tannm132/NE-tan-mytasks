import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  complete(e) {
    e.target.disabled = true

    const id = e.target.dataset.id
    const csrfToken = document.querySelector("[name='csrf-token']").content

    fetch(`/tasks/${id}/complete`, {
      method: 'POST',
      mode: 'cors',
      cache: 'no-cache',
      credentials: 'same-origin',
      headers: {
        'Content-Type': 'application/json',
        'X-CSRF-Token': csrfToken
      },
      body: JSON.stringify({})
    })
      .then((response) => {
        // delay a bit for better visual effect
        setTimeout(() => {
          e.target.closest('.task-item').classList.add('hidden')
        }, 1000);
      })
      .catch((error) => {
        e.target.disabled = false
      })
  }
}
