.class public final synthetic Lbp4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le74;


# instance fields
.field public final synthetic b:Lep4;


# direct methods
.method public synthetic constructor <init>(Lep4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbp4;->b:Lep4;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lbp4;->b:Lep4;

    check-cast p1, Landroidx/datastore/preferences/core/MutablePreferences;

    invoke-static {p0, p1}, Lep4;->c(Lep4;Landroidx/datastore/preferences/core/MutablePreferences;)Lzfb;

    move-result-object p0

    return-object p0
.end method
