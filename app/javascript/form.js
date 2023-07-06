const form = document.getElementById('myForm');
form.addEventListener('submit', async (event) => {
  event.preventDefault(); 

  const formData = new FormData(form);

  try {
    const response = await fetch(form.action, {
      method: form.method,
      body: formData
    });

    if (response.ok) {
      document.getElementById('successMessage').textContent = 'Form submitted successfully';
      window.location.href = '/success-page';

    } else {
      document.getElementById('errorMessage').textContent = 'Form submission failed. Please try again.';
      const errorData = await response.json();
      console.log(errorData.message);
    }
  } catch (error) {
    document.getElementById('errorMessage').textContent = 'An error occurred. Please try again later.';
    document.getElementById('retryButton').addEventListener('click', () => {
      form.submit();
    });
  }
});
