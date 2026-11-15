.class public abstract Lm4d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lorg/json/JSONObject;

.field public static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lm4d;->a:Lorg/json/JSONObject;

    const-string v0, ""

    sput-object v0, Lm4d;->b:Ljava/lang/String;

    return-void
.end method
