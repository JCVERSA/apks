.class public final synthetic Luf/b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(JLkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Luf/b;->a:J

    .line 5
    .line 6
    iput-object p3, p0, Luf/b;->b:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-wide v0, p0, Luf/b;->a:J

    .line 2
    .line 3
    iget-object v2, p0, Luf/b;->b:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    invoke-static {v0, v1, v2, p1}, Luf/c;->a(JLkotlin/jvm/functions/Function1;Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
