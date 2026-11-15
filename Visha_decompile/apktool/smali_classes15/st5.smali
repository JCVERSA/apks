.class public final synthetic Lst5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldt5;


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lst5;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lst5;->a:Ljava/lang/String;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p0, p1}, Lcom/transsion/widgets/LottieUtils;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
