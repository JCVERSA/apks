.class public final synthetic Lnz8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc09$b;


# instance fields
.field public final synthetic a:Lc09;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:La9b;


# direct methods
.method public synthetic constructor <init>(Lc09;Ljava/util/List;La9b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnz8;->a:Lc09;

    iput-object p2, p0, Lnz8;->b:Ljava/util/List;

    iput-object p3, p0, Lnz8;->c:La9b;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lnz8;->a:Lc09;

    iget-object v1, p0, Lnz8;->b:Ljava/util/List;

    iget-object p0, p0, Lnz8;->c:La9b;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, v1, p0, p1}, Lc09;->S(Lc09;Ljava/util/List;La9b;Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
