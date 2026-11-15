package com.transsion.hubsdk.common.util;

import android.content.res.Resources;

public class TranResourceUtils {
    protected static final String ANIM = "anim";
    protected static final String ANIMATOR = "animator";
    protected static final String ARRAY = "array";
    protected static final String ATTR = "attr";
    protected static final String BOOL = "bool";
    protected static final String COLOR = "color";
    protected static final String DIMEN = "dimen";
    protected static final String DRAWABLE = "drawable";
    protected static final String ID = "id";
    protected static final String INTEGER = "integer";
    protected static final String INTERPOLATOR = "interpolator";
    protected static final String LAYOUT = "layout";
    protected static final String MIPMAP = "mipmap";
    protected static final String PLURALS = "plurals";
    protected static final String STRING = "string";
    protected static final String STYLE = "style";
    protected static final String STYLEABLE = "styleable";
    protected static final String TYPE_ANDROID = "android";
    protected static final String TYPE_MTK = "com.mediatek";
    protected static final String TYPE_OS = "com.transsion";
    protected static final String TYPE_THUB = "com.transsion.thub.res";
    protected static final String TYPE_UNISOC = "com.unisoc";
    protected static final String XML = "xml";

    public static class Android {
        public static int getAnimId(String str) {
            return TranResourceUtils.getIdentifierByType(str, TranResourceUtils.ANIM, "android");
        }

        public static int getAnimatorId(String str) {
            return TranResourceUtils.getIdentifierByType(str, TranResourceUtils.ANIMATOR, "android");
        }

        public static int getArrayId(String str) {
            return TranResourceUtils.getIdentifierByType(str, TranResourceUtils.ARRAY, "android");
        }

        public static int getAttrId(String str) {
            return TranResourceUtils.getIdentifierByType(str, TranResourceUtils.ATTR, "android");
        }

        public static int getBoolId(String str) {
            return TranResourceUtils.getIdentifierByType(str, TranResourceUtils.BOOL, "android");
        }

        public static int getColorId(String str) {
            return TranResourceUtils.getIdentifierByType(str, "color", "android");
        }

        public static int getDimenId(String str) {
            return TranResourceUtils.getIdentifierByType(str, TranResourceUtils.DIMEN, "android");
        }

        public static int getDrawableId(String str) {
            return TranResourceUtils.getIdentifierByType(str, TranResourceUtils.DRAWABLE, "android");
        }

        public static int getIdId(String str) {
            return TranResourceUtils.getIdentifierByType(str, "id", "android");
        }

        public static int getIntegerId(String str) {
            return TranResourceUtils.getIdentifierByType(str, "integer", "android");
        }

        public static int getInterpolatorId(String str) {
            return TranResourceUtils.getIdentifierByType(str, TranResourceUtils.INTERPOLATOR, "android");
        }

        public static int getLayoutId(String str) {
            return TranResourceUtils.getIdentifierByType(str, "layout", "android");
        }

        public static int getMipmapId(String str) {
            return TranResourceUtils.getIdentifierByType(str, TranResourceUtils.MIPMAP, "android");
        }

        public static int getOthersId(String str, String str2) {
            return TranResourceUtils.getIdentifierByType(str, str2, "android");
        }

        public static int getPluralsId(String str) {
            return TranResourceUtils.getIdentifierByType(str, TranResourceUtils.PLURALS, "android");
        }

        public static int getStringId(String str) {
            return TranResourceUtils.getIdentifierByType(str, "string", "android");
        }

        public static int getStyleId(String str) {
            return TranResourceUtils.getIdentifierByType(str, "style", "android");
        }

        public static int getStyleableId(String str) {
            return TranResourceUtils.getIdentifierByType(str, TranResourceUtils.STYLEABLE, "android");
        }

        public static int getXmlId(String str) {
            return TranResourceUtils.getIdentifierByType(str, "xml", "android");
        }
    }

    public static class Mtk {
        public static int getAnimId(String str) {
            return TranResourceUtils.getIdentifierByType(str, TranResourceUtils.ANIM, TranResourceUtils.TYPE_MTK);
        }

        public static int getAnimatorId(String str) {
            return TranResourceUtils.getIdentifierByType(str, TranResourceUtils.ANIMATOR, TranResourceUtils.TYPE_MTK);
        }

        public static int getArrayId(String str) {
            return TranResourceUtils.getIdentifierByType(str, TranResourceUtils.ARRAY, TranResourceUtils.TYPE_MTK);
        }

        public static int getAttrId(String str) {
            return TranResourceUtils.getIdentifierByType(str, TranResourceUtils.ATTR, TranResourceUtils.TYPE_MTK);
        }

        public static int getBoolId(String str) {
            return TranResourceUtils.getIdentifierByType(str, TranResourceUtils.BOOL, TranResourceUtils.TYPE_MTK);
        }

        public static int getColorId(String str) {
            return TranResourceUtils.getIdentifierByType(str, "color", TranResourceUtils.TYPE_MTK);
        }

        public static int getDimenId(String str) {
            return TranResourceUtils.getIdentifierByType(str, TranResourceUtils.DIMEN, TranResourceUtils.TYPE_MTK);
        }

        public static int getDrawableId(String str) {
            return TranResourceUtils.getIdentifierByType(str, TranResourceUtils.DRAWABLE, TranResourceUtils.TYPE_MTK);
        }

        public static int getIdId(String str) {
            return TranResourceUtils.getIdentifierByType(str, "id", TranResourceUtils.TYPE_MTK);
        }

        public static int getIntegerId(String str) {
            return TranResourceUtils.getIdentifierByType(str, "integer", TranResourceUtils.TYPE_MTK);
        }

        public static int getInterpolatorId(String str) {
            return TranResourceUtils.getIdentifierByType(str, TranResourceUtils.INTERPOLATOR, TranResourceUtils.TYPE_MTK);
        }

        public static int getLayoutId(String str) {
            return TranResourceUtils.getIdentifierByType(str, "layout", TranResourceUtils.TYPE_MTK);
        }

        public static int getMipmapId(String str) {
            return TranResourceUtils.getIdentifierByType(str, TranResourceUtils.MIPMAP, TranResourceUtils.TYPE_MTK);
        }

        public static int getOthersId(String str, String str2) {
            return TranResourceUtils.getIdentifierByType(str, str2, TranResourceUtils.TYPE_MTK);
        }

        public static int getPluralsId(String str) {
            return TranResourceUtils.getIdentifierByType(str, TranResourceUtils.PLURALS, TranResourceUtils.TYPE_MTK);
        }

        public static int getStringId(String str) {
            return TranResourceUtils.getIdentifierByType(str, "string", TranResourceUtils.TYPE_MTK);
        }

        public static int getStyleId(String str) {
            return TranResourceUtils.getIdentifierByType(str, "style", TranResourceUtils.TYPE_MTK);
        }

        public static int getStyleableId(String str) {
            return TranResourceUtils.getIdentifierByType(str, TranResourceUtils.STYLEABLE, TranResourceUtils.TYPE_MTK);
        }

        public static int getXmlId(String str) {
            return TranResourceUtils.getIdentifierByType(str, "xml", TranResourceUtils.TYPE_MTK);
        }
    }

    public static class Os {
        public static int getAnimId(String str) {
            return TranResourceUtils.getIdentifierByType(str, TranResourceUtils.ANIM, TranResourceUtils.TYPE_OS);
        }

        public static int getAnimatorId(String str) {
            return TranResourceUtils.getIdentifierByType(str, TranResourceUtils.ANIMATOR, TranResourceUtils.TYPE_OS);
        }

        public static int getArrayId(String str) {
            return TranResourceUtils.getIdentifierByType(str, TranResourceUtils.ARRAY, TranResourceUtils.TYPE_OS);
        }

        public static int getAttrId(String str) {
            return TranResourceUtils.getIdentifierByType(str, TranResourceUtils.ATTR, TranResourceUtils.TYPE_OS);
        }

        public static int getBoolId(String str) {
            return TranResourceUtils.getIdentifierByType(str, TranResourceUtils.BOOL, TranResourceUtils.TYPE_OS);
        }

        public static int getColorId(String str) {
            return TranResourceUtils.getIdentifierByType(str, "color", TranResourceUtils.TYPE_OS);
        }

        public static int getDimenId(String str) {
            return TranResourceUtils.getIdentifierByType(str, TranResourceUtils.DIMEN, TranResourceUtils.TYPE_OS);
        }

        public static int getDrawableId(String str) {
            return TranResourceUtils.getIdentifierByType(str, TranResourceUtils.DRAWABLE, TranResourceUtils.TYPE_OS);
        }

        public static int getIdId(String str) {
            return TranResourceUtils.getIdentifierByType(str, "id", TranResourceUtils.TYPE_OS);
        }

        public static int getIntegerId(String str) {
            return TranResourceUtils.getIdentifierByType(str, "integer", TranResourceUtils.TYPE_OS);
        }

        public static int getInterpolatorId(String str) {
            return TranResourceUtils.getIdentifierByType(str, TranResourceUtils.INTERPOLATOR, TranResourceUtils.TYPE_OS);
        }

        public static int getLayoutId(String str) {
            return TranResourceUtils.getIdentifierByType(str, "layout", TranResourceUtils.TYPE_OS);
        }

        public static int getMipmapId(String str) {
            return TranResourceUtils.getIdentifierByType(str, TranResourceUtils.MIPMAP, TranResourceUtils.TYPE_OS);
        }

        public static int getOthersId(String str, String str2) {
            return TranResourceUtils.getIdentifierByType(str, str2, TranResourceUtils.TYPE_OS);
        }

        public static int getPluralsId(String str) {
            return TranResourceUtils.getIdentifierByType(str, TranResourceUtils.PLURALS, TranResourceUtils.TYPE_OS);
        }

        public static int getStringId(String str) {
            return TranResourceUtils.getIdentifierByType(str, "string", TranResourceUtils.TYPE_OS);
        }

        public static int getStyleId(String str) {
            return TranResourceUtils.getIdentifierByType(str, "style", TranResourceUtils.TYPE_OS);
        }

        public static int getStyleableId(String str) {
            return TranResourceUtils.getIdentifierByType(str, TranResourceUtils.STYLEABLE, TranResourceUtils.TYPE_OS);
        }

        public static int getXmlId(String str) {
            return TranResourceUtils.getIdentifierByType(str, "xml", TranResourceUtils.TYPE_OS);
        }
    }

    public static class Other {
        public static int getOthersId(String str, String str2, String str3) {
            return TranResourceUtils.getIdentifierByType(str, str2, str3);
        }
    }

    public static class Thub {
        public static int getAnimId(String str) {
            return TranResourceUtils.getIdentifierByType(str, TranResourceUtils.ANIM, TranResourceUtils.TYPE_THUB);
        }

        public static int getAnimatorId(String str) {
            return TranResourceUtils.getIdentifierByType(str, TranResourceUtils.ANIMATOR, TranResourceUtils.TYPE_THUB);
        }

        public static int getArrayId(String str) {
            return TranResourceUtils.getIdentifierByType(str, TranResourceUtils.ARRAY, TranResourceUtils.TYPE_THUB);
        }

        public static int getAttrId(String str) {
            return TranResourceUtils.getIdentifierByType(str, TranResourceUtils.ATTR, TranResourceUtils.TYPE_THUB);
        }

        public static int getBoolId(String str) {
            return TranResourceUtils.getIdentifierByType(str, TranResourceUtils.BOOL, TranResourceUtils.TYPE_THUB);
        }

        public static int getColorId(String str) {
            return TranResourceUtils.getIdentifierByType(str, "color", TranResourceUtils.TYPE_THUB);
        }

        public static int getDimenId(String str) {
            return TranResourceUtils.getIdentifierByType(str, TranResourceUtils.DIMEN, TranResourceUtils.TYPE_THUB);
        }

        public static int getDrawableId(String str) {
            return TranResourceUtils.getIdentifierByType(str, TranResourceUtils.DRAWABLE, TranResourceUtils.TYPE_THUB);
        }

        public static int getIdId(String str) {
            return TranResourceUtils.getIdentifierByType(str, "id", TranResourceUtils.TYPE_THUB);
        }

        public static int getIntegerId(String str) {
            return TranResourceUtils.getIdentifierByType(str, "integer", TranResourceUtils.TYPE_THUB);
        }

        public static int getInterpolatorId(String str) {
            return TranResourceUtils.getIdentifierByType(str, TranResourceUtils.INTERPOLATOR, TranResourceUtils.TYPE_THUB);
        }

        public static int getLayoutId(String str) {
            return TranResourceUtils.getIdentifierByType(str, "layout", TranResourceUtils.TYPE_THUB);
        }

        public static int getMipmapId(String str) {
            return TranResourceUtils.getIdentifierByType(str, TranResourceUtils.MIPMAP, TranResourceUtils.TYPE_THUB);
        }

        public static int getOthersId(String str, String str2) {
            return TranResourceUtils.getIdentifierByType(str, str2, TranResourceUtils.TYPE_THUB);
        }

        public static int getPluralsId(String str) {
            return TranResourceUtils.getIdentifierByType(str, TranResourceUtils.PLURALS, TranResourceUtils.TYPE_THUB);
        }

        public static int getStringId(String str) {
            return TranResourceUtils.getIdentifierByType(str, "string", TranResourceUtils.TYPE_THUB);
        }

        public static int getStyleId(String str) {
            return TranResourceUtils.getIdentifierByType(str, "style", TranResourceUtils.TYPE_THUB);
        }

        public static int getStyleableId(String str) {
            return TranResourceUtils.getIdentifierByType(str, TranResourceUtils.STYLEABLE, TranResourceUtils.TYPE_THUB);
        }

        public static int getXmlId(String str) {
            return TranResourceUtils.getIdentifierByType(str, "xml", TranResourceUtils.TYPE_THUB);
        }
    }

    public static class Unisoc {
        public static int getAnimId(String str) {
            return TranResourceUtils.getIdentifierByType(str, TranResourceUtils.ANIM, TranResourceUtils.TYPE_UNISOC);
        }

        public static int getAnimatorId(String str) {
            return TranResourceUtils.getIdentifierByType(str, TranResourceUtils.ANIMATOR, TranResourceUtils.TYPE_UNISOC);
        }

        public static int getArrayId(String str) {
            return TranResourceUtils.getIdentifierByType(str, TranResourceUtils.ARRAY, TranResourceUtils.TYPE_UNISOC);
        }

        public static int getAttrId(String str) {
            return TranResourceUtils.getIdentifierByType(str, TranResourceUtils.ATTR, TranResourceUtils.TYPE_UNISOC);
        }

        public static int getBoolId(String str) {
            return TranResourceUtils.getIdentifierByType(str, TranResourceUtils.BOOL, TranResourceUtils.TYPE_UNISOC);
        }

        public static int getColorId(String str) {
            return TranResourceUtils.getIdentifierByType(str, "color", TranResourceUtils.TYPE_UNISOC);
        }

        public static int getDimenId(String str) {
            return TranResourceUtils.getIdentifierByType(str, TranResourceUtils.DIMEN, TranResourceUtils.TYPE_UNISOC);
        }

        public static int getDrawableId(String str) {
            return TranResourceUtils.getIdentifierByType(str, TranResourceUtils.DRAWABLE, TranResourceUtils.TYPE_UNISOC);
        }

        public static int getIdId(String str) {
            return TranResourceUtils.getIdentifierByType(str, "id", TranResourceUtils.TYPE_UNISOC);
        }

        public static int getIntegerId(String str) {
            return TranResourceUtils.getIdentifierByType(str, "integer", TranResourceUtils.TYPE_UNISOC);
        }

        public static int getInterpolatorId(String str) {
            return TranResourceUtils.getIdentifierByType(str, TranResourceUtils.INTERPOLATOR, TranResourceUtils.TYPE_UNISOC);
        }

        public static int getLayoutId(String str) {
            return TranResourceUtils.getIdentifierByType(str, "layout", TranResourceUtils.TYPE_UNISOC);
        }

        public static int getMipmapId(String str) {
            return TranResourceUtils.getIdentifierByType(str, TranResourceUtils.MIPMAP, TranResourceUtils.TYPE_UNISOC);
        }

        public static int getOthersId(String str, String str2) {
            return TranResourceUtils.getIdentifierByType(str, str2, TranResourceUtils.TYPE_UNISOC);
        }

        public static int getPluralsId(String str) {
            return TranResourceUtils.getIdentifierByType(str, TranResourceUtils.PLURALS, TranResourceUtils.TYPE_UNISOC);
        }

        public static int getStringId(String str) {
            return TranResourceUtils.getIdentifierByType(str, "string", TranResourceUtils.TYPE_UNISOC);
        }

        public static int getStyleId(String str) {
            return TranResourceUtils.getIdentifierByType(str, "style", TranResourceUtils.TYPE_UNISOC);
        }

        public static int getStyleableId(String str) {
            return TranResourceUtils.getIdentifierByType(str, TranResourceUtils.STYLEABLE, TranResourceUtils.TYPE_UNISOC);
        }

        public static int getXmlId(String str) {
            return TranResourceUtils.getIdentifierByType(str, "xml", TranResourceUtils.TYPE_UNISOC);
        }
    }

    public static int getIdentifierByType(String str, String str2, String str3) {
        return Resources.getSystem().getIdentifier(str, str2, str3);
    }
}
