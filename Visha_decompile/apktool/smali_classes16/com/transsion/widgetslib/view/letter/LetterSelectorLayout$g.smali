.class public Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field public final a:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

.field public final b:Landroid/content/Context;

.field public c:Z


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$g;->c:Z

    .line 4
    iput-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$g;->a:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$g;->b:Landroid/content/Context;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;Lkk5;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$g;-><init>(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$g;)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$g;->a:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$g;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$g;->c:Z

    return-void
.end method
