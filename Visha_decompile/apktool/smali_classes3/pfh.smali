.class public final synthetic Lpfh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm2i;


# instance fields
.field public final synthetic a:Lqfh;


# direct methods
.method public synthetic constructor <init>(Lqfh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpfh;->a:Lqfh;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lpfh;->a:Lqfh;

    check-cast p1, Ljava/lang/Exception;

    invoke-static {p0, p1}, Lqfh;->a(Lqfh;Ljava/lang/Exception;)Lrfh;

    move-result-object p0

    return-object p0
.end method
