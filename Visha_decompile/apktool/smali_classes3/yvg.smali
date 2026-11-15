.class public final synthetic Lyvg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpqh;


# instance fields
.field public final synthetic a:Ldwg;

.field public final synthetic b:Lfwg;


# direct methods
.method public synthetic constructor <init>(Ldwg;Lfwg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyvg;->a:Ldwg;

    iput-object p2, p0, Lyvg;->b:Lfwg;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lyvg;->a:Ldwg;

    iget-object p0, p0, Lyvg;->b:Lfwg;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, p0, p1}, Ldwg;->a(Ldwg;Lfwg;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;

    const/4 p0, 0x0

    return-object p0
.end method
