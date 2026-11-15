package defpackage;

import OppOOp0.OppO0O0;
import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.google.gson.Gson;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.model.data.CountryData;
import com.transsion.xuanniao.account.model.data.CountryListReq;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.Iterator;

public class on7 implements uk7 {
    public static void c(CountryData countryData, Context context) {
        ArrayList<CountryData.Country> arrayList;
        if (countryData == null || (arrayList = countryData.countries) == null || arrayList.size() <= 0) {
            return;
        }
        Gson gson = new Gson();
        String absolutePath = context.getCacheDir().getAbsolutePath();
        String json = gson.toJson(countryData);
        String str = countryData.countries.get(0).language + ".txt";
        try {
            File file = new File(absolutePath);
            if (!file.exists()) {
                file.mkdir();
            }
        } catch (Exception e) {
            Log.d("com.palm.id.log", e + "");
        }
        try {
            File file2 = new File(absolutePath + str);
            if (!file2.exists()) {
                file2.createNewFile();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        try {
            File file3 = new File(absolutePath + "/" + str);
            if (!file3.exists()) {
                file3.getParentFile().mkdirs();
                file3.createNewFile();
            }
            RandomAccessFile randomAccessFile = new RandomAccessFile(file3, "rwd");
            randomAccessFile.setLength(0L);
            randomAccessFile.write(json.getBytes());
            randomAccessFile.close();
        } catch (Exception e3) {
            Log.d("com.palm.id.log", "Error on write File:" + e3);
        }
    }

    public static void d(Context context, OppO0O0 oppO0O0) {
        CountryListReq countryListReq = new CountryListReq();
        countryListReq.appId = go7.a.a.a;
        countryListReq.language = context.getResources().getString(R.string.xn_language);
        String str = context.getCacheDir().getAbsolutePath() + "/" + countryListReq.language + ".txt";
        StringBuilder sb = new StringBuilder();
        File file = new File(str);
        if (file.isDirectory()) {
            Log.d("com.palm.id.log", str + ",The File doesn't not exist.");
        } else {
            try {
                FileInputStream fileInputStream = new FileInputStream(file);
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(fileInputStream));
                while (true) {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        break;
                    } else {
                        sb.append(line);
                    }
                }
                fileInputStream.close();
            } catch (FileNotFoundException unused) {
                Log.d("com.palm.id.log", str + ",The File doesn't not exist.");
            } catch (IOException e) {
                Log.d("com.palm.id.log", e.getMessage());
            }
        }
        String string = sb.toString();
        if (TextUtils.isEmpty(string)) {
            oppO0O0.e(CountryData.makeCountryData(context));
            return;
        }
        try {
            CountryData countryData = (CountryData) new Gson().fromJson(string, CountryData.class);
            Iterator<CountryData.Country> it = countryData.countries.iterator();
            while (it.hasNext()) {
                it.next().isSelected = false;
            }
            oppO0O0.e(countryData);
        } catch (Exception unused2) {
            oppO0O0.d(null, null);
        }
    }

    public void a(final Context context, final OppO0O0 oppO0O0) {
        new Thread(new Runnable() {
            @Override
            public final void run() {
                on7.d(context, oppO0O0);
            }
        }).start();
    }

    public void b(final Context context, final CountryData countryData) {
        new Thread(new Runnable() {
            @Override
            public final void run() {
                on7.c(countryData, context);
            }
        }).start();
    }
}
