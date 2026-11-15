.class public Lcom/transsion/magicvideo/widgets/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/widgets/a;->m(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/widgets/a;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/widgets/a;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/a$b;->b:Lcom/transsion/magicvideo/widgets/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/a$b;->b:Lcom/transsion/magicvideo/widgets/a;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/a;->a(Lcom/transsion/magicvideo/widgets/a;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/a$b;->b:Lcom/transsion/magicvideo/widgets/a;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/a;->g()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ll06;->b(Ljava/lang/String;)V

    return-void
.end method
