.class public final synthetic Ldfh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm2i;


# instance fields
.field public final synthetic a:Lefh;


# direct methods
.method public synthetic constructor <init>(Lefh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldfh;->a:Lefh;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ldfh;->a:Lefh;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p0, p1}, Lefh;->b(Lefh;Ljava/lang/Throwable;)Lffh;

    move-result-object p0

    return-object p0
.end method
