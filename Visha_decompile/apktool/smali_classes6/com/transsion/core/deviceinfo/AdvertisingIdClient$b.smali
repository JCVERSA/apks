.class public final Lcom/transsion/core/deviceinfo/AdvertisingIdClient$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/core/deviceinfo/AdvertisingIdClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/core/deviceinfo/AdvertisingIdClient$b;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/transsion/core/deviceinfo/AdvertisingIdClient$b;->b:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/core/deviceinfo/AdvertisingIdClient$b;->a:Ljava/lang/String;

    return-object p0
.end method
