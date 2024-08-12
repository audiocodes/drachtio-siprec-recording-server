module.exports = {
  target: (dependencyName) => {
    if (dependencyName == 'tape')
      return 'minor';
    return 'latest';
  }
}
