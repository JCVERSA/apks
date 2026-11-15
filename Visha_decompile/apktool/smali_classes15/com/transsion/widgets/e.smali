.class public final synthetic Lcom/transsion/widgets/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/widgets/DateTimeView$1;

.field public final synthetic c:Ljava/util/Locale;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/widgets/DateTimeView$1;Ljava/util/Locale;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgets/e;->b:Lcom/transsion/widgets/DateTimeView$1;

    iput-object p2, p0, Lcom/transsion/widgets/e;->c:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgets/e;->b:Lcom/transsion/widgets/DateTimeView$1;

    iget-object p0, p0, Lcom/transsion/widgets/e;->c:Ljava/util/Locale;

    invoke-static {v0, p0}, Lcom/transsion/widgets/DateTimeView$1;->a(Lcom/transsion/widgets/DateTimeView$1;Ljava/util/Locale;)V

    return-void
.end method
