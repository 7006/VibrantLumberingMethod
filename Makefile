PROJECT = vlm

DEPS = wolfmq

SHELL_DEPS = sync

LOCAL_DEPS = observer

dep_wolfmq = git https://github.com/spartakus81/wolfmq.git
dep_sync = git https://github.com/rustyio/sync.git

SHELL_OPTS = \
	-s $(PROJECT) \
	-s sync \
	-s observer

include erlang.mk
