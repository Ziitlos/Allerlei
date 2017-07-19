-- kure.sql

select u.Id,
u.UserName,
u.FirstName,
u.LastName,
u.EMail,
u.ReplacementEMail,
u.ResetToken,
u.ResetType,
u.ResetTime,
u.ClientTermsAgreement,
u.ClientTermsAgreementTimestamp,
u.NonClientTermsAgreement,
u.NonClientTermsAgreementTimestamp,
u.HelsanaNewsServices,
u.Version,
u.CreatedBy,
u.CreatedOn,
u.UpdatedBy,
u.UpdatedOn,
u.Deleted,
u.EMailState,
u.UserRoleId,
u.StatusPoints,
u.BonusPoints,
u.LocaleId,
u.DeviceId,
u.AddressId,
u.Iban,
u.HelsanaEmployee,
u.Gender,
u.SendNotification,
ur.Id,
ur.Name as UserRoleName,
ur.Version as UserRoleVersion,
ur.YearLimit,
ur.MaxPoints
from dbo.HelsanaUsers u,
     dbo.UserRoles ur
where ur.Id = u.UserRoleId
and ur.Deleted = 0
and u.Deleted = 0
order by u.Id
