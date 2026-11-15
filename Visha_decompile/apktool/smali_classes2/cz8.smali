.class public final synthetic Lcz8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc09$b;


# instance fields
.field public final synthetic a:Lc09;

.field public final synthetic b:La9b;


# direct methods
.method public synthetic constructor <init>(Lc09;La9b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcz8;->a:Lc09;

    iput-object p2, p0, Lcz8;->b:La9b;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcz8;->a:Lc09;

    iget-object p0, p0, Lcz8;->b:La9b;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, p0, p1}, Lc09;->h(Lc09;La9b;Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
