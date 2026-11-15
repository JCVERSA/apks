.class public final synthetic Lcom/transsion/widgets/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/widgets/ClockView$1;

.field public final synthetic c:Ljava/util/Locale;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/widgets/ClockView$1;Ljava/util/Locale;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgets/b;->b:Lcom/transsion/widgets/ClockView$1;

    iput-object p2, p0, Lcom/transsion/widgets/b;->c:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgets/b;->b:Lcom/transsion/widgets/ClockView$1;

    iget-object p0, p0, Lcom/transsion/widgets/b;->c:Ljava/util/Locale;

    invoke-static {v0, p0}, Lcom/transsion/widgets/ClockView$1;->b(Lcom/transsion/widgets/ClockView$1;Ljava/util/Locale;)V

    return-void
.end method
