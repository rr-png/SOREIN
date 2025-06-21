Uncertainy_Meter
Author: Sorein#02 
Timestamp: 2025-06-21
Scale: 0-100 (semantic confidence)
Display rule:
   if UMeter < 40 → emit badge   {??}
   if UMeter < 20 → emit badge   {???} + auto-prompt user for clarification
Otherwise → silent
