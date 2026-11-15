.class public final synthetic La09;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc09$b;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/database/Cursor;

    invoke-static {p1}, Lc09;->k(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
