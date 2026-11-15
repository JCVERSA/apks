.class public final synthetic Lp27;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# instance fields
.field public final synthetic b:Lc37;


# direct methods
.method public synthetic constructor <init>(Lc37;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp27;->b:Lc37;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lp27;->b:Lc37;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p0, p1}, Lc37;->b(Lc37;Ljava/lang/Throwable;)V

    return-void
.end method
