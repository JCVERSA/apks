.class public abstract Ltze;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Leze;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "gads:csi_reporting_ratio"

    const-wide v1, 0x3fa999999999999aL    # 0.05

    invoke-static {v0, v1, v2}, Leze;->a(Ljava/lang/String;D)Leze;

    new-instance v0, Leze;

    const-string v1, "https://csi.gstatic.com/csi"

    const/4 v2, 0x4

    const-string v3, "gads:sdk_csi_server"

    invoke-direct {v0, v3, v1, v2}, Leze;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    sput-object v0, Ltze;->a:Leze;

    const-string v0, "gads:enabled_sdk_csi"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Leze;->d(Ljava/lang/String;Z)Leze;

    return-void
.end method
