.class public final synthetic Lzr0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld84;


# instance fields
.field public final synthetic a:Lbs0;


# direct methods
.method public synthetic constructor <init>(Lbs0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzr0;->a:Lbs0;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lzr0;->a:Lbs0;

    check-cast p1, Lbs0$a;

    invoke-static {p0, p1}, Lbs0;->c(Lbs0;Lbs0$a;)Lbs0$b;

    move-result-object p0

    return-object p0
.end method
