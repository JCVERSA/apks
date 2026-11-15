.class public final synthetic Lskc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/transsion/magicvideo/fragments/WhatsAppVideoFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/fragments/WhatsAppVideoFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lskc;->a:Lcom/transsion/magicvideo/fragments/WhatsAppVideoFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lskc;->a:Lcom/transsion/magicvideo/fragments/WhatsAppVideoFragment;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/fragments/WhatsAppVideoFragment;->n4(Lcom/transsion/magicvideo/fragments/WhatsAppVideoFragment;Ljava/util/List;)V

    return-void
.end method
