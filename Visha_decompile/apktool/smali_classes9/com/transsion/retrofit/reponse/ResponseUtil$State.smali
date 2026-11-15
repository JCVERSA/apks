.class public Lcom/transsion/retrofit/reponse/ResponseUtil$State;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/retrofit/reponse/ResponseUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# instance fields
.field public code:Ljava/lang/String;

.field public errMsg:Ljava/lang/String;

.field public isSucess:Z

.field public toastMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/retrofit/reponse/ResponseUtil$State;->isSucess:Z

    const-string v0, "200"

    iput-object v0, p0, Lcom/transsion/retrofit/reponse/ResponseUtil$State;->code:Ljava/lang/String;

    const-string v0, "net_error"

    iput-object v0, p0, Lcom/transsion/retrofit/reponse/ResponseUtil$State;->errMsg:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/retrofit/reponse/ResponseUtil$State;->toastMsg:Ljava/lang/String;

    return-void
.end method
