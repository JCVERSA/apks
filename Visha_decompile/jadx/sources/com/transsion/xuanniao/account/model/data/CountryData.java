package com.transsion.xuanniao.account.model.data;

import android.content.Context;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.transsion.xuanniao.account.R;
import defpackage.hb0;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Locale;

public class CountryData implements Serializable {
    public long baseTime;
    public ArrayList<Country> countries;
    public long validity;

    public static String getCode(String str, ArrayList<Country> arrayList) {
        if ("Taiwan".equals(str)) {
            str = "Taiwan/China";
        }
        if (arrayList == null) {
            return "";
        }
        for (int i = 0; i < arrayList.size(); i++) {
            if (TextUtils.equals(arrayList.get(i).country, str) || TextUtils.equals(arrayList.get(i).localName, str)) {
                return arrayList.get(i).code;
            }
        }
        return "";
    }

    public static String getCountryCode(Context context, ArrayList<Country> arrayList) {
        String strSubstring;
        String simOperator;
        String str = "";
        String string = context.getApplicationContext().getSharedPreferences("AccountPrefs", 0).getString(hb0.KEY_NAME_COUNTRY_CODE, "");
        if (string.isEmpty() && arrayList != null) {
            try {
                TelephonyManager telephonyManager = (TelephonyManager) context.getApplicationContext().getSystemService("phone");
                strSubstring = (telephonyManager == null || (simOperator = telephonyManager.getSimOperator()) == null || simOperator.length() < 3) ? "" : simOperator.substring(0, 3);
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (TextUtils.isEmpty(strSubstring)) {
                try {
                    Class<?> clsLoadClass = context.getClassLoader().loadClass("android.os.SystemProperties");
                    str = (String) clsLoadClass.getMethod("get", String.class).invoke(clsLoadClass, new String("persist.sys.oobe_country"));
                } catch (IllegalArgumentException e2) {
                    throw e2;
                } catch (Exception unused) {
                }
                if (!TextUtils.isEmpty(str)) {
                    for (Country country : arrayList) {
                        if (str.equalsIgnoreCase(country.iso)) {
                            string = country.code;
                        }
                    }
                }
            } else {
                for (Country country2 : arrayList) {
                    if (country2.mcc.equals(strSubstring)) {
                        string = country2.code;
                    }
                }
            }
        }
        if (!TextUtils.isEmpty(string)) {
            return string;
        }
        String displayCountry = Locale.getDefault().getDisplayCountry(Locale.US);
        if (displayCountry.contains("(")) {
            displayCountry = displayCountry.split("\\(")[0].trim();
        }
        if ("russia".equalsIgnoreCase(displayCountry)) {
            displayCountry = "Russian Federation";
        } else if ("United States".equalsIgnoreCase(displayCountry)) {
            displayCountry = "United States of America";
        }
        return getCode(displayCountry, arrayList);
    }

    public static String getCountryName(Context context, String str, ArrayList<Country> arrayList) {
        for (int i = 0; i < arrayList.size(); i++) {
            if (TextUtils.equals(str, arrayList.get(i).country)) {
                int i2 = arrayList.get(i).resId;
                if (i2 != R.string.HK && i2 != R.string.TW && i2 != R.string.MO) {
                    return context.getString(i2);
                }
                return context.getString(R.string.xn_china) + "/" + context.getString(i2);
            }
        }
        return str;
    }

    public static String getEnName(Context context, String str, ArrayList<Country> arrayList) {
        if (TextUtils.isEmpty(str) || arrayList == null) {
            return "";
        }
        for (int i = 0; i < arrayList.size(); i++) {
            int i2 = arrayList.get(i).resId;
            if (TextUtils.equals(str, (i2 == R.string.HK || i2 == R.string.TW || i2 == R.string.MO) ? context.getString(R.string.xn_china) + "/" + context.getString(i2) : i2 > 0 ? context.getString(i2) : arrayList.get(i).displayName)) {
                return arrayList.get(i).country;
            }
        }
        return "";
    }

    public static CountryData makeCountryData(Context context) {
        CountryData countryData = new CountryData();
        countryData.validity = 0L;
        countryData.baseTime = 0L;
        countryData.countries = new ArrayList<>();
        for (Country country : CacheCountries.countriesData) {
            Country country2 = new Country(country.iso, country.localName, country.country, country.code, country.mcc, 0);
            int i = country.resId;
            if (i == R.string.HK || i == R.string.TW || i == R.string.MO) {
                country2.displayName = context.getString(R.string.xn_china) + "/" + context.getString(country.resId);
            } else {
                country2.displayName = context.getResources().getString(country.resId);
            }
            countryData.countries.add(country2);
        }
        return countryData;
    }

    public static class Country implements Serializable {
        public String code;
        public String country;
        public String displayName;
        public boolean isSelected;
        public String iso;
        public String language;
        public String localName;
        public String mcc;
        public int resId;

        public Country(String str, String str2, String str3, String str4, String str5, int i, boolean z) {
            this.iso = str;
            this.country = str3;
            this.code = str4;
            this.mcc = str5;
            this.resId = i;
            this.isSelected = z;
            this.localName = str2;
        }

        public Country(String str, String str2, String str3, String str4, String str5, int i) {
            this(str, str2, str3, str4, str5, i, false);
        }
    }

    public static String getCode(Context context, String str, ArrayList<Country> arrayList) {
        return getCode(getEnName(context, str, arrayList), arrayList);
    }
}
