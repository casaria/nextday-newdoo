cmd_/root/node-v5.6.0/out/Release/mksnapshot := g++ -pthread -rdynamic -m64 -fuse-ld=gold -B/root/node-v5.6.0/third_party/binutils/Linux_x64/Release/bin -m64  -o /root/node-v5.6.0/out/Release/mksnapshot -Wl,--start-group /root/node-v5.6.0/out/Release/obj.target/mksnapshot/deps/v8/src/snapshot/mksnapshot.o /root/node-v5.6.0/out/Release/obj.target/deps/v8/tools/gyp/libv8_base.a /root/node-v5.6.0/out/Release/obj.target/deps/v8/tools/gyp/libv8_nosnapshot.a /root/node-v5.6.0/out/Release/obj.target/deps/v8/tools/gyp/libv8_libplatform.a /root/node-v5.6.0/out/Release/obj.target/deps/v8/tools/gyp/libv8_libbase.a -Wl,--end-group -ldl -lrt
