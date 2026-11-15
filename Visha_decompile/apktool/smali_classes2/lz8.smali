.class public final synthetic Llz8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc09$b;


# instance fields
.field public final synthetic a:Lc09;


# direct methods
.method public synthetic constructor <init>(Lc09;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llz8;->a:Lc09;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Llz8;->a:Lc09;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {p0, p1}, Lc09;->n(Lc09;Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
