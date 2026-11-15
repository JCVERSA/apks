.class public final synthetic Lv16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/widgets/MarqueTextView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/widgets/MarqueTextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv16;->b:Lcom/transsion/widgets/MarqueTextView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lv16;->b:Lcom/transsion/widgets/MarqueTextView;

    invoke-static {p0}, Lcom/transsion/widgets/MarqueTextView;->a(Lcom/transsion/widgets/MarqueTextView;)V

    return-void
.end method
