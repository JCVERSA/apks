.class public Lcom/transsion/onlinevideo/webcast/WebcastActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/webcast/WebcastActivity;->initVishaPlayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/webcast/WebcastActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/webcast/WebcastActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity$a;->b:Lcom/transsion/onlinevideo/webcast/WebcastActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/webcast/WebcastActivity$a;->b:Lcom/transsion/onlinevideo/webcast/WebcastActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
