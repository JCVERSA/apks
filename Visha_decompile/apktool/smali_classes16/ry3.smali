.class public final synthetic Lry3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslib/flipper/FlipperLayout;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/widgetslib/flipper/FlipperLayout;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lry3;->b:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    iput p2, p0, Lry3;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lry3;->b:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    iget p0, p0, Lry3;->c:I

    invoke-static {v0, p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout$b;->a(Lcom/transsion/widgetslib/flipper/FlipperLayout;I)V

    return-void
.end method
