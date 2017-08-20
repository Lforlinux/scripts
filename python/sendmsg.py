#read the docs
#https://theviralcode.com/2017/08/20/how-to-send-messages-using-python/

#import the Twilio client from the dependency
from twilio.rest import Client

# put your twilio credentials here
account_sid = "ACc3ad9705dd4b8ba1cf6e0dcb830d32ce" # get it from https://www.twilio.com/console/phone-numbers/runtime/test-credentials
auth_token = "7b02bb0b95124e512e49f61023685916"

client = Client(account_sid, auth_token)

media_url = "https://c1.staticflickr.com/3/2899/14341091933_1e92e62d12_b.jpg"

response = client.messages.create(
    to= "+919894076069", #https://www.twilio.com/console/phone-numbers/verified
    from_= "+15005550006", #+15005550006 will be used for trial account.
    body= "Hello, how you doing ?",
    media_url= media_url # if you need to attach multimedia to your message, else remove this parameter.
    )
