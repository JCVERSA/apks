package lx;

import android.content.Context;
import com.transsnet.loginapi.bean.Country;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class b {

    private static b f66163a;

    private static JSONArray f66164b;

    public static b b() {
        if (f66163a == null) {
            f66163a = new b();
        }
        return f66163a;
    }

    private String c(InputStream inputStream) throws Throwable {
        StringBuilder sb2 = new StringBuilder();
        BufferedReader bufferedReader = null;
        try {
            try {
                BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(inputStream));
                while (true) {
                    try {
                        String line = bufferedReader2.readLine();
                        if (line == null) {
                            break;
                        }
                        sb2.append(line);
                    } catch (IOException unused) {
                        bufferedReader = bufferedReader2;
                        if (bufferedReader != null) {
                            bufferedReader.close();
                        }
                        return sb2.toString();
                    } catch (Throwable th2) {
                        th = th2;
                        bufferedReader = bufferedReader2;
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException unused2) {
                            }
                        }
                        throw th;
                    }
                }
                bufferedReader2.close();
            } catch (IOException unused3) {
            }
        } catch (IOException unused4) {
        } catch (Throwable th3) {
            th = th3;
        }
        return sb2.toString();
    }

    public ArrayList a(Context context) throws Throwable {
        ArrayList arrayList = new ArrayList();
        if (f66164b == null) {
            d(context);
        }
        JSONArray jSONArray = f66164b;
        if (jSONArray != null) {
            int length = jSONArray.length();
            for (int i10 = 0; i10 < length; i10++) {
                try {
                    JSONObject jSONObject = f66164b.getJSONObject(i10);
                    Country country = new Country();
                    country.setCountry(jSONObject.getString("cn"));
                    country.setCode(jSONObject.getString("pcc"));
                    if (jSONObject.has("mcc")) {
                        country.setMcc(jSONObject.getString("mcc"));
                    }
                    if (jSONObject.has("alpha2")) {
                        country.setCountry_s(jSONObject.getString("alpha2"));
                    }
                    arrayList.add(country);
                } catch (JSONException e10) {
                    e10.printStackTrace();
                }
            }
        }
        return arrayList;
    }

    public JSONArray d(Context context) throws Throwable {
        String strC;
        if (f66164b == null) {
            try {
                strC = c(context.getAssets().open("sdk_country_cc_mcc.json"));
            } catch (IOException e10) {
                e10.printStackTrace();
                strC = "";
            }
            try {
                f66164b = new JSONArray(strC);
            } catch (JSONException e11) {
                e11.printStackTrace();
            }
        }
        return f66164b;
    }
}
