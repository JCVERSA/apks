.class public final synthetic Ly68;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# instance fields
.field public final synthetic b:Lk78;


# direct methods
.method public synthetic constructor <init>(Lk78;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly68;->b:Lk78;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Ly68;->b:Lk78;

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lk78;->u(Lk78;Ljava/util/ArrayList;)V

    return-void
.end method
