.class public final synthetic Lj39;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/mediationads/beans/SdkAdMediaItem;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/mediationads/beans/SdkAdMediaItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj39;->b:Lcom/transsion/mediationads/beans/SdkAdMediaItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lj39;->b:Lcom/transsion/mediationads/beans/SdkAdMediaItem;

    invoke-static {p0, p1}, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->b(Lcom/transsion/mediationads/beans/SdkAdMediaItem;Landroid/view/View;)V

    return-void
.end method
