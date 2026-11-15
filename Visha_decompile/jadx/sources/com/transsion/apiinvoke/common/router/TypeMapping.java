package com.transsion.apiinvoke.common.router;

import java.io.Serializable;

public class TypeMapping {

    public interface Convert<F, T> extends Serializable {
        T convert(F f);
    }

    public static final class ConvertBean {
        public String from;
        public String to;

        public ConvertBean(String str, String str2) {
            this.from = str;
            this.to = str2;
        }
    }

    public static final class MergeBean {
        public String[] from;
        public String to;

        public MergeBean(String[] strArr, String str) {
            this.from = strArr;
            this.to = str;
        }
    }
}
