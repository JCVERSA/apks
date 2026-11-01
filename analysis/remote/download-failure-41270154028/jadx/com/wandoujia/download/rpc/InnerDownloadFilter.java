package com.wandoujia.download.rpc;

import android.text.TextUtils;
import android.util.Pair;
import com.mbridge.msdk.foundation.download.database.DownloadModel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import o.dn3;

public class InnerDownloadFilter {
    public List a;

    public enum FilterArea {
        CONTENT("resource_type"),
        STATUS("status"),
        SIZE(DownloadModel.TOTAL_BYTES),
        VISIBLE("visible"),
        EXTRA("resource_extras");

        private final String column;

        FilterArea(String str) {
            this.column = str;
        }

        public String getColumnName() {
            return this.column;
        }
    }

    public enum Operator {
        MORE,
        LESS,
        EQUAL,
        LIKE
    }

    public static final class a {
        public List a;
        public boolean b;

        public class C0494a {
            public FilterArea a;
            public Operator b;
            public List c;

            public C0494a(FilterArea filterArea, Operator operator, List list) {
                this.a = filterArea;
                this.b = operator;
                this.c = list;
            }
        }

        public a() {
            this.a = new ArrayList();
            this.b = false;
        }

        public a(dn3 dn3Var) {
            this();
        }

        public InnerDownloadFilter a() {
            if (this.b) {
                for (C0494a c0494a : this.a) {
                    if (c0494a.a.equals(FilterArea.CONTENT.getColumnName()) || c0494a.a.equals(FilterArea.STATUS.getColumnName())) {
                        if (c0494a.c.size() > 1) {
                            throw new IllegalArgumentException("when has size info, content or status value can't be more than one");
                        }
                    }
                }
            }
            return new InnerDownloadFilter(this.a);
        }

        public a b(List list) {
            ArrayList arrayList = new ArrayList();
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                Pair pair = (Pair) it2.next();
                if (!TextUtils.isEmpty((CharSequence) pair.first) && !TextUtils.isEmpty((CharSequence) pair.second)) {
                    arrayList.add("'%\"" + ((String) pair.first) + "\":\"" + ((String) pair.second) + "\"%'");
                }
            }
            this.a.add(new C0494a(FilterArea.EXTRA, Operator.LIKE, arrayList));
            return this;
        }

        public a c(Operator operator, int i) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(String.valueOf(i));
            this.a.add(new C0494a(FilterArea.SIZE, operator, arrayList));
            this.b = true;
            return this;
        }

        public a d(List list) {
            ArrayList arrayList = new ArrayList();
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                arrayList.add(String.valueOf((Integer) it2.next()));
            }
            this.a.add(new C0494a(FilterArea.STATUS, Operator.EQUAL, arrayList));
            return this;
        }

        public a e(List list) {
            ArrayList arrayList = new ArrayList();
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                arrayList.add(String.valueOf(((DownloadConstants.ResourceType) it2.next()).ordinal()));
            }
            this.a.add(new C0494a(FilterArea.CONTENT, Operator.EQUAL, arrayList));
            return this;
        }

        public a f(boolean z) {
            ArrayList arrayList = new ArrayList(1);
            if (z) {
                arrayList.add(String.valueOf(1));
            } else {
                arrayList.add(String.valueOf(0));
            }
            this.a.add(new C0494a(FilterArea.VISIBLE, Operator.EQUAL, arrayList));
            return this;
        }
    }

    public InnerDownloadFilter(List list) {
        new ArrayList();
        this.a = list;
    }

    public static a b() {
        return new a(null);
    }

    public List a() {
        return this.a;
    }
}
