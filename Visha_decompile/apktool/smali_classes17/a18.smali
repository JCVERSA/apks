.class public abstract La18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lko4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La18$a;
    }
.end annotation


# static fields
.field public static final a:La18$a;

.field public static final b:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, La18$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, La18$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, La18;->a:La18$a;

    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "\n        {\n            \"1\": {\n                \"value\": \"+0 (000) 000-00-00\"\n            },\n            \"2\": {\n                \"0\": {\n                    \"value\": \"+00 (000) 000-00-00\"\n                },\n                \"7\": {\n                    \"value\": \"+00 (000) 000-00-00\"\n                },\n                \"4\": {\n                    \"4\": {\n                        \"value\": \"+000 000 000 000\"\n                    },\n                    \"*\": {\n                        \"value\": \"+000 (00) 000-00-00\"\n                    }\n                },\n                \"*\": {\n                    \"value\": \"+000 (00) 000-00-00\"\n                }\n            },\n            \"3\": {\n                \"1\": {\n                    \"value\": \"+00 00 000 0000\"\n                },\n                \"5\": {\n                    \"0\": {\n                        \"value\": \"+000 (00) 000-00-00\"\n                    },\n                    \"*\": {\n                        \"value\": \"+000 (00) 000-00-00\"\n                    }\n                },\n                \"8\": {\n                    \"0\": {\n                        \"value\": \"+000 (00) 000-00-00\"\n                    },\n                    \"*\": {\n                        \"value\": \"+000 (00) 000-00-00\"\n                    }\n                },\n                \"7\": {\n                    \"3\": {\n                        \"value\": \"+000 (000) 0-00-00\"\n                    },\n                    \"4\": {\n                        \"value\": \"+000 (000) 000-00-00\"\n                    },\n                    \"5\": {\n                        \"value\": \"+000 (00) 000-00-00\"\n                    },\n                    \"*\": {\n                        \"value\": \"+000 (00) 000-00-00\"\n                    }\n                },\n                \"*\": {\n                    \"value\": \"+00 (000) 000-00-00\"\n                }\n            },\n            \"4\": {\n                \"1\": {\n                    \"value\": \"+00 00 000-00-00\"\n                },\n                \"2\": {\n                    \"value\": \"+000 (00) 000-00-00\"\n                },\n                \"4\": {\n                    \"value\": \"+00 0000 000000\"\n                },\n                \"*\": {\n                    \"value\": \"+00 (000) 000-00-00\"\n                }\n            },\n            \"5\": {\n                \"0\": {\n                    \"value\": \"+000 (00) 000-00-00\"\n                },\n                \"5\": {\n                    \"value\": \"+00 (00) 0000-0000\"\n                },\n                \"9\": {\n                    \"value\": \"+000 (00) 000-00-00\"\n                },\n                \"*\": {\n                    \"value\": \"+00 (000) 000-00-00\"\n                }\n            },\n            \"6\": {\n                \"7\": {\n                    \"value\": \"+000 (00) 000-00-00\"\n                },\n                \"8\": {\n                    \"value\": \"+000 (00) 000-00-00\"\n                },\n                \"9\": {\n                    \"value\": \"+000 (00) 000-00-00\"\n                },\n                \"*\": {\n                    \"value\": \"+00 (000) 000-00-00\"\n                }\n            },\n            \"7\": {\n                \"7\": {\n                    \"value\": \"+0 (000) 000-00-00\"\n                },\n                \"3\": {\n                    \"3\": {\n                        \"value\": \"+0 (000) 000-00-00\"\n                    },\n                    \"*\": {\n                        \"value\": \"+0 (000) 000-00-00\"\n                    }\n                },\n                \"*\": {\n                    \"value\": \"+0 (000) 000-00-00\"\n                }\n            },\n            \"8\": {\n                \"9\": {\n                    \"value\": \"0 (000) 000-00-00\"\n                },\n                \"5\": {\n                    \"value\": \"+000 (00) 000-00-00\"\n                },\n                \"8\": {\n                    \"value\": \"+000 (00) 000-00-00\"\n                },\n                \"*\": {\n                    \"value\": \"+00 (000) 000-00-00\"\n                }\n            },\n            \"9\": {\n                \"6\": {\n                    \"value\": \"+000 (00) 000-00-00\"\n                },\n                \"7\": {\n                    \"value\": \"+000 (00) 000-00-00\"\n                },\n                \"9\": {\n                    \"4\": {\n                        \"value\": \"+000 (000) 000-00-00\"\n                    },\n                    \"5\": {\n                        \"value\": \"+000 (000) 00-00-00\"\n                    },\n                    \"6\": {\n                        \"value\": \"+000 (000) 000-00-00\"\n                    },\n                    \"8\": {\n                        \"value\": \"+000 (00) 000-00-00\"\n                    },\n                    \"*\": {\n                        \"value\": \"+000 (00) 000-00-00\"\n                    }\n                },\n                \"*\": {\n                    \"value\": \"+00 (000) 000-00-00\"\n                }\n            },\n            \"*\": {\n                \"value\": \"+0000000000000\"\n            }\n        }\n        "

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sput-object v0, La18;->b:Lorg/json/JSONObject;

    return-void
.end method
