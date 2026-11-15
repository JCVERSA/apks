.class public final synthetic Lcg7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/app/hubert/guide/core/Controller;


# direct methods
.method public synthetic constructor <init>(Lcom/app/hubert/guide/core/Controller;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcg7;->b:Lcom/app/hubert/guide/core/Controller;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcg7;->b:Lcom/app/hubert/guide/core/Controller;

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->S(Lcom/app/hubert/guide/core/Controller;Landroid/view/View;)V

    return-void
.end method
