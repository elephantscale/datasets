http://www.nasdaqtrader.com/trader.aspx?id=symboldirdefs

----------
NASDAQ listed:

File Name:  nasdaqlisted.txt
FTP Directory:  ftp://ftp.nasdaqtrader.com/symboldirectory

Symbol  The one to four or five character identifier for each NASDAQ-listed security.

Security Name Company issuing the security.

Market Category The category assigned to the issue by NASDAQ based on Listing Requirements. Values:
Q = NASDAQ Global Select MarketSM
G = NASDAQ Global MarketSM
S = NASDAQ Capital Market
 
Test Issue  Indicates whether or not the security is a test security. Values: Y = yes, it is a test issue. N = no, it is not a test issue.

Financial Status  Indicates when an issuer has failed to submit its regulatory filings on a timely basis, has failed to meet NASDAQ's continuing listing standards, and/or has filed for bankruptcy. Values include:
D = Deficient: Issuer Failed to Meet NASDAQ Continued Listing Requirements
E = Delinquent: Issuer Missed Regulatory Filing Deadline
Q = Bankrupt: Issuer Has Filed for Bankruptcy
N = Normal (Default): Issuer Is NOT Deficient, Delinquent, or Bankrupt.
G = Deficient and Bankrupt
H = Deficient and Delinquent
J = Delinquent and Bankrupt
K = Deficient, Delinquent, and Bankrupt

Round Lot Indicates the number of shares that make up a round lot for the given security.
File Creation Time: The last row of each Symbol Directory text file contains a timestamp that reports the File Creation Time. The file creation time is based on when NASDAQ Trader generates the file and can be used to determine the timeliness of the associated data. The row contains the words File Creation Time followed by mmddyyyyhhmm as the first field, followed by all delimiters to round out the row. An example: File Creation Time: 1217200717:03|||||

--------------

File Name:  mfundslist.txt
FTP Directory:  ftp://ftp.nasdaqtrader.com/symboldirectory
 

Data Field  Definition
Fund Symbol The identifier for each mutual fund or money market.
Fund Name   The name of each mutual fund or money market.
Fund Family Name    The Name of the Fund Company that is responsible for the fund.
Type    
A code used to provide the type of fund.

The allowed values are:

AN = Annuities 
MF = Mutual Fund 
MS = Supplemantal Mutual Fund 
$$ = Money Market Fund 
$S = Supplemental Money Market Fund
SP = Structured Products 
US = UIT Supplemental List
UT = UIT News Media List
Category    
The subcategory of the fund type.

The allowed values are:

For Annuities (AN):
M = Variable 
N = Equity Indexed

For Mutual Fund (MF) 
O = Open-end
C = Closed-end

For Money Fund (MS)
A = General Purpose
G = Govt. Securities
X = Tax-Exempt

For Structured Products (SP)
R = Access Transaction
S = Tax Driven Structure
T = Buffered Note
U = Principal Protected Note
V = Levered Note
W = Enhanced Income Note

For Unit Investment Trust (US or UT)
E = Equity
F = Not Used/Reserved
D = Fixed Income

Pricing Agent   The firm responsible for the pricing of the fund.
File Creation Time  The last row of each Symbol Directory text file contains a timestamp that reports the File Creation time for the corresponding file. This timestamp can be used to determine the timeliness of the associated data. The row contains the words File Creation Time followed by mmddyyyyhhmm as the first field, followed by all delimiters to round out the row. An example: File Creation Time: File Creation Time: 1217200717:03|||||.
PBOT Futures

File Name:  pbot.csv
FTP Directory:  ftp://ftp.nasdaqtrader.com/SymbolDirectory/pbot.csv
 

Field Name  Definition
Commodity ID    3-character symbol identifying given product, common for all series of this product.
PBOT Product Symbol The identifier for this particular series of the product, consists of the 3-character commodity ID + 2-character code identifying expiration date for the given series.
PBOT Product Description    The name of the given PBOT Product.
Last Trade Date The last business day on which trading can occur for the given series, in yyyymmdd format. Depending on the product type, this day may be the same as the expiration day or the last business day before the expiration day.
Expiration Date The date on which the given series for the PBOT product and the right to exercise it cease to exist, in yyyymmdd format.