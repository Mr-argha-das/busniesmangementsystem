const nodemailer = require('nodemailer');

// Create a transporter object using SMTP transport
const transporter = nodemailer.createTransport({
  service: 'mail.diwamjewels.com', // e.g., 'gmail' or use an SMTP configuration
  port: 465,
  auth: {
    user: 'noreplay@diwamjewels.com', // Your email address
    pass: 'a1s2d3f4g5h6j7k8l9@arghadas', // Your email password or an app-specific password
  },
});

// Email data
const mailOptions = {
  from: 'noreplay@diwamjewels.com', // Sender's email address
  to: 'hdark6336@gmail.com', // Recipient's email address
  subject: 'Hello, World!', // Subject line
  text: 'This is a test email from Node.js', // Plain text body
  // html: '<p>This is a test email from <strong>Node.js</strong></p>', // HTML body
};

// Send email
transporter.sendMail(mailOptions, (error, info) => {
  if (error) {
    console.error('Error sending email:', error);
  } else {
    console.log('Email sent:', info.response);
  }
});
