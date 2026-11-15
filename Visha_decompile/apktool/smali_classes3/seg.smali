.class public final synthetic Lseg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkf;


# instance fields
.field public final synthetic b:Lteg;

.field public final synthetic c:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lteg;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lseg;->b:Lteg;

    iput-object p2, p0, Lseg;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final zza(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lseg;->b:Lteg;

    iget-object v1, p0, Lseg;->c:Ljava/util/Map;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lteg;->e(Lteg;Ljava/util/Map;ZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
