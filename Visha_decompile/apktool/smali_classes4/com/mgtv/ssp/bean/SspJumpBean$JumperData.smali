.class public Lcom/mgtv/ssp/bean/SspJumpBean$JumperData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/json/JsonInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/ssp/bean/SspJumpBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JumperData"
.end annotation


# instance fields
.field public btnTitle:Ljava/lang/String;

.field public downloadUrl:Ljava/lang/String;

.field public schemaHint:I

.field public schemaUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/mgtv/ssp/bean/SspJumpBean;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/bean/SspJumpBean;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/bean/SspJumpBean$JumperData;->this$0:Lcom/mgtv/ssp/bean/SspJumpBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTargetUrl()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/mgtv/ssp/bean/SspJumpBean$JumperData;->schemaUrl:Ljava/lang/String;

    const-string v0, "MG^UNION!2022@"

    invoke-static {p0, v0}, Lcom/mgtv/ssp/utils/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
