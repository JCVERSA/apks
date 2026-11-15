.class public final synthetic Lry0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/widgetslib/dialog/InputDialog$g;


# instance fields
.field public final synthetic a:Lcom/transsion/cloud/fragment/CloudBaseFragment;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/cloud/fragment/CloudBaseFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lry0;->a:Lcom/transsion/cloud/fragment/CloudBaseFragment;

    iput-object p2, p0, Lry0;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lry0;->a:Lcom/transsion/cloud/fragment/CloudBaseFragment;

    iget-object p0, p0, Lry0;->b:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->g0(Lcom/transsion/cloud/fragment/CloudBaseFragment;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
