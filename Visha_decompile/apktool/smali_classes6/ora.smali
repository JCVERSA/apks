.class public final synthetic Lora;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/btdownload/ui/FileSelectAdapter;

.field public final synthetic c:Landroid/widget/CheckBox;

.field public final synthetic d:Landroid/widget/TextView;

.field public final synthetic e:Landroid/content/Context;

.field public final synthetic f:Landroid/widget/Button;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/btdownload/ui/FileSelectAdapter;Landroid/widget/CheckBox;Landroid/widget/TextView;Landroid/content/Context;Landroid/widget/Button;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lora;->b:Lcom/transsion/btdownload/ui/FileSelectAdapter;

    iput-object p2, p0, Lora;->c:Landroid/widget/CheckBox;

    iput-object p3, p0, Lora;->d:Landroid/widget/TextView;

    iput-object p4, p0, Lora;->e:Landroid/content/Context;

    iput-object p5, p0, Lora;->f:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lora;->b:Lcom/transsion/btdownload/ui/FileSelectAdapter;

    iget-object v1, p0, Lora;->c:Landroid/widget/CheckBox;

    iget-object v2, p0, Lora;->d:Landroid/widget/TextView;

    iget-object v3, p0, Lora;->e:Landroid/content/Context;

    iget-object v4, p0, Lora;->f:Landroid/widget/Button;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Ltra;->e(Lcom/transsion/btdownload/ui/FileSelectAdapter;Landroid/widget/CheckBox;Landroid/widget/TextView;Landroid/content/Context;Landroid/widget/Button;Landroid/view/View;)V

    return-void
.end method
