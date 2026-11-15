.class public final synthetic Lcp4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le74;


# instance fields
.field public final synthetic b:Lep4;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lep4;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcp4;->b:Lep4;

    iput-object p2, p0, Lcp4;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcp4;->b:Lep4;

    iget-object p0, p0, Lcp4;->c:Ljava/lang/String;

    check-cast p1, Landroidx/datastore/preferences/core/MutablePreferences;

    invoke-static {v0, p0, p1}, Lep4;->d(Lep4;Ljava/lang/String;Landroidx/datastore/preferences/core/MutablePreferences;)Lzfb;

    move-result-object p0

    return-object p0
.end method
