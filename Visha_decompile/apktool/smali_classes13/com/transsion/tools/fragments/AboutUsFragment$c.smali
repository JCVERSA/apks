.class public Lcom/transsion/tools/fragments/AboutUsFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/fragments/AboutUsFragment;->j0(Landroid/widget/LinearLayout;Ljava/lang/String;[Ljava/lang/String;I[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:[I

.field public final synthetic b:I

.field public final synthetic c:Lcom/transsion/tools/fragments/AboutUsFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/fragments/AboutUsFragment;[II)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/fragments/AboutUsFragment$c;->c:Lcom/transsion/tools/fragments/AboutUsFragment;

    iput-object p2, p0, Lcom/transsion/tools/fragments/AboutUsFragment$c;->a:[I

    iput p3, p0, Lcom/transsion/tools/fragments/AboutUsFragment$c;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/tools/fragments/AboutUsFragment$c;->a:[I

    iget p0, p0, Lcom/transsion/tools/fragments/AboutUsFragment$c;->b:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    aput p1, v0, p0

    return-void
.end method
