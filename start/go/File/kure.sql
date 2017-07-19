select u.Id,
u.UserName,
u.FirstName,
u.LastName,
u.EMail,
u.EMailState,
ur.Name as UserRoleName,
u.HelsanaEmployee,
u.ClientTermsAgreement,
u.ClientTermsAgreementTimestamp,
u.NonClientTermsAgreement,
u.NonClientTermsAgreementTimestamp,
u.CreatedBy,
u.CreatedOn,
u.UpdatedBy,
u.UpdatedOn,
u.StatusPoints,
u.BonusPoints,
u.LocaleId,
u.DeviceId,
u.AddressId,
u.Iban,
u.Gender,
ur.MaxPoints
from Helsana_prod.dbo.HelsanaUsers u,
     Helsana_prod.dbo.UserRoles ur
where ur.Id = u.UserRoleId
and ur.Deleted = 0
and u.Deleted = 0
order by u.Id
