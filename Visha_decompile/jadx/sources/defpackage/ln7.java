package defpackage;

import android.content.Context;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.transsion.xuanniao.account.R;
import java.util.ArrayList;

public class ln7 extends BaseAdapter {
    public ArrayList b = new ArrayList();
    public Context c;
    public String d;

    public class a {
        public TextView a;

        public a(ln7 ln7Var) {
        }
    }

    public ln7(Context context) {
        this.c = context;
    }

    public String a(int i) {
        if (this.d.contains("@")) {
            StringBuilder sb = new StringBuilder();
            String str = this.d;
            sb.append(str.substring(0, str.indexOf("@") + 1));
            sb.append((String) this.b.get(i));
            return sb.toString();
        }
        return this.d + "@" + ((String) this.b.get(i));
    }

    public boolean b(String str) {
        this.d = str;
        this.b.clear();
        boolean z = false;
        if (!TextUtils.isEmpty(str)) {
            ik7 ik7Var = new ik7();
            if (!str.contains("@") || str.indexOf("@") == str.length() - 1) {
                this.b.addAll(ik7Var.a);
            } else {
                String[] strArrSplit = str.split("@");
                String.valueOf(strArrSplit.length);
                for (String str2 : strArrSplit) {
                }
                String str3 = strArrSplit.length == 1 ? strArrSplit[0] : strArrSplit.length >= 2 ? strArrSplit[1] : "";
                if (TextUtils.isEmpty(str3)) {
                    this.b.addAll(ik7Var.a);
                } else {
                    for (String str4 : ik7Var.a) {
                        if (str4.startsWith(str3)) {
                            this.b.add(str4);
                        }
                    }
                    for (String str5 : ik7Var.b) {
                        if (str5.startsWith(str3)) {
                            this.b.add(str5);
                        }
                    }
                }
            }
            if (this.b.size() > 0) {
                z = true;
            }
        }
        notifyDataSetChanged();
        return z;
    }

    @Override
    public int getCount() {
        ArrayList arrayList = this.b;
        if (arrayList != null) {
            return arrayList.size();
        }
        return 0;
    }

    @Override
    public Object getItem(int i) {
        ArrayList arrayList = this.b;
        if (arrayList != null) {
            return arrayList.get(i);
        }
        return null;
    }

    @Override
    public long getItemId(int i) {
        return i;
    }

    @Override
    public View getView(int i, View view, ViewGroup viewGroup) {
        String strSubstring;
        int i2 = 0;
        if (view == null) {
            view = LayoutInflater.from(this.c).inflate(R.layout.xn_item_email_association, (ViewGroup) null, false);
            a aVar = new a(this);
            aVar.a = (TextView) view.findViewById(R.id.item);
            view.setTag(aVar);
        }
        a aVar2 = (a) view.getTag();
        if (this.d.contains("@")) {
            String str = this.d;
            strSubstring = str.substring(0, str.indexOf("@"));
        } else {
            String str2 = this.d;
            strSubstring = str2.substring(0, str2.length());
        }
        int length = strSubstring.length();
        StringBuilder sb = new StringBuilder();
        if (strSubstring.length() > 24) {
            sb.append(strSubstring.substring(0, 25));
            sb.append("\n");
            length++;
            i2 = 25;
        }
        if (strSubstring.length() > 49) {
            sb.append(strSubstring.substring(25, 50));
            sb.append("\n");
            length++;
            i2 = 50;
        }
        if (strSubstring.length() > 74) {
            i2 = 75;
            sb.append(strSubstring.substring(50, 75));
            sb.append("\n");
            length++;
        }
        if (i2 < strSubstring.length()) {
            sb.append(strSubstring.substring(i2));
        }
        try {
            SpannableString spannableString = new SpannableString(sb.toString() + "@" + ((String) this.b.get(i)));
            spannableString.setSpan(new ForegroundColorSpan(this.c.getColor(R.color.os_text_primary_color)), length, spannableString.length(), 33);
            aVar2.a.setText(spannableString);
        } catch (Exception e) {
            Log.d("com.palm.id.log", Log.getStackTraceString(e));
        }
        return view;
    }
}
