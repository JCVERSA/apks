.class public final synthetic Lbwg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpqh;


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ldwg;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lbwg;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    iget-object p0, p0, Lbwg;->a:Ljava/lang/String;

    invoke-static {p1, p0}, Ldwg;->o(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
