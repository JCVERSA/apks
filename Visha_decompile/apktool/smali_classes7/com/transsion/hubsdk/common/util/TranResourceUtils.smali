.class public Lcom/transsion/hubsdk/common/util/TranResourceUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/common/util/TranResourceUtils$Other;,
        Lcom/transsion/hubsdk/common/util/TranResourceUtils$Unisoc;,
        Lcom/transsion/hubsdk/common/util/TranResourceUtils$Mtk;,
        Lcom/transsion/hubsdk/common/util/TranResourceUtils$Os;,
        Lcom/transsion/hubsdk/common/util/TranResourceUtils$Android;,
        Lcom/transsion/hubsdk/common/util/TranResourceUtils$Thub;
    }
.end annotation


# static fields
.field protected static final ANIM:Ljava/lang/String; = "anim"

.field protected static final ANIMATOR:Ljava/lang/String; = "animator"

.field protected static final ARRAY:Ljava/lang/String; = "array"

.field protected static final ATTR:Ljava/lang/String; = "attr"

.field protected static final BOOL:Ljava/lang/String; = "bool"

.field protected static final COLOR:Ljava/lang/String; = "color"

.field protected static final DIMEN:Ljava/lang/String; = "dimen"

.field protected static final DRAWABLE:Ljava/lang/String; = "drawable"

.field protected static final ID:Ljava/lang/String; = "id"

.field protected static final INTEGER:Ljava/lang/String; = "integer"

.field protected static final INTERPOLATOR:Ljava/lang/String; = "interpolator"

.field protected static final LAYOUT:Ljava/lang/String; = "layout"

.field protected static final MIPMAP:Ljava/lang/String; = "mipmap"

.field protected static final PLURALS:Ljava/lang/String; = "plurals"

.field protected static final STRING:Ljava/lang/String; = "string"

.field protected static final STYLE:Ljava/lang/String; = "style"

.field protected static final STYLEABLE:Ljava/lang/String; = "styleable"

.field protected static final TYPE_ANDROID:Ljava/lang/String; = "android"

.field protected static final TYPE_MTK:Ljava/lang/String; = "com.mediatek"

.field protected static final TYPE_OS:Ljava/lang/String; = "com.transsion"

.field protected static final TYPE_THUB:Ljava/lang/String; = "com.transsion.thub.res"

.field protected static final TYPE_UNISOC:Ljava/lang/String; = "com.unisoc"

.field protected static final XML:Ljava/lang/String; = "xml"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIdentifierByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method
