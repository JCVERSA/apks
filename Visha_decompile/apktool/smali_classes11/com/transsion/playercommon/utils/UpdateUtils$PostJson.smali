.class public Lcom/transsion/playercommon/utils/UpdateUtils$PostJson;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/playercommon/utils/UpdateUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PostJson"
.end annotation


# instance fields
.field public encryptContent:Ljava/lang/String;

.field public iv:Ljava/lang/String;

.field public key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/playercommon/utils/UpdateUtils$PostJson;->encryptContent:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/playercommon/utils/UpdateUtils$PostJson;->key:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/playercommon/utils/UpdateUtils$PostJson;->iv:Ljava/lang/String;

    return-void
.end method
