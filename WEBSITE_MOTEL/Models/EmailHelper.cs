using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Net.Mail;
using System.Net;

namespace WEBSITE_MOTEL.Models
{
    public class EmailHelper
    {
        public static bool SendEmail(string senderEmail, string senderPassword, string receiverEmail, string subject, string body)
        {
            try
            {
                MailMessage mailMessage = new MailMessage();
                mailMessage.From = new MailAddress(senderEmail);
                mailMessage.To.Add(receiverEmail);
                mailMessage.Subject = subject;
                mailMessage.Body = body;

                SmtpClient smtpClient = new SmtpClient("smtp.gamil.com", 587);
                smtpClient.EnableSsl = true;
                smtpClient.Credentials = new NetworkCredential(senderEmail, senderPassword);

                smtpClient.Send(mailMessage);
                return true;
            }
            catch (Exception ex)
            {
                Console.WriteLine("Gửi Mail Thất Bại" + ex.ToString());
                return false;
            }
        }
    }
}