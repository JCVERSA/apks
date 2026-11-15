.class public abstract La0f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Leze;

.field public static final b:Leze;

.field public static final c:Leze;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "gads:lite_sdk_retriever:adapter:enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Leze;->d(Ljava/lang/String;Z)Leze;

    move-result-object v0

    sput-object v0, La0f;->a:Leze;

    const-string v0, "gads:lite_sdk_retriever:dynamite_version"

    const-wide/32 v2, 0xdda2480

    invoke-static {v0, v2, v3}, Leze;->b(Ljava/lang/String;J)Leze;

    move-result-object v0

    sput-object v0, La0f;->b:Leze;

    const-string v0, "gads:lite_sdk_retriever:version_number:enable"

    invoke-static {v0, v1}, Leze;->d(Ljava/lang/String;Z)Leze;

    move-result-object v0

    sput-object v0, La0f;->c:Leze;

    return-void
.end method
