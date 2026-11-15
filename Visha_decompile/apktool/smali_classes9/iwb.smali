.class public final synthetic Liwb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# instance fields
.field public final synthetic b:Ljwb;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljwb;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liwb;->b:Ljwb;

    iput-object p2, p0, Liwb;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Liwb;->b:Ljwb;

    iget-object p0, p0, Liwb;->c:Ljava/lang/String;

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, p0, p1}, Ljwb;->k(Ljwb;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method
