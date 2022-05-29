import esbuild from 'esbuild';

const options = {
  entryPoints: ['src/app.js', 'src/app.css'],
  outdir: 'dist',
  bundle: true
};

esbuild.build(options).catch(() => process.exit(1));
