.class public final synthetic Lt20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic b:Lu20;


# direct methods
.method public synthetic constructor <init>(Lu20;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt20;->b:Lu20;

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 0

    iget-object p0, p0, Lt20;->b:Lu20;

    invoke-static {p0}, Lu20;->a(Lu20;)Z

    move-result p0

    return p0
.end method
