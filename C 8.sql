select CardNumber, len(CardNumber) as LengthOfCardNumber,right(CardNumber,4) as FourDigitsOnTheRight,'XXXX-XXXX-XXXX'+right(CardNumber,4) as CardNumberWithX
from Orders;