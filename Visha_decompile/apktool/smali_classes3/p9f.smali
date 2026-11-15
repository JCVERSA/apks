.class public final Lp9f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lq9f;


# direct methods
.method public constructor <init>(Lq9f;)V
    .locals 0

    iput-object p1, p0, Lp9f;->b:Lq9f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lp9f;->b:Lq9f;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lq9f;->i(Z)V

    return-void
.end method
