.class public final synthetic Lg6b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# instance fields
.field public final synthetic b:Lt6b;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lt6b;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg6b;->b:Lt6b;

    iput-object p2, p0, Lg6b;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lg6b;->b:Lt6b;

    iget-object p0, p0, Lg6b;->c:Ljava/lang/String;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, p0, p1}, Lt6b;->c(Lt6b;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
